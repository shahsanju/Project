const app = require('express')()
const http = require('http').createServer(app)
const io = require('socket.io')(http)

app.get('/', (req, res) => {
    res.send("Node Server is running. Yay!!")
    console.log(res);
})

//Socket Logic


io.on('connection', (socket) => {
    //Get the chatID of the user and join in a room of the same chatID
    chatID = socket.handshake.query.chatID


     socket.on('join', (data) => {
        //socket.leave(chatID)
        socket.join(data);
        
        console.log("JOIN CHANNEL"+data);
    
    })
    
    //Leave the room if the user closes the socket
    socket.on('leaveUser', (data) => {
        socket.leave(data);
        console.log("LEAVE CHANNEL---"+data);
    })


    ////Send invitation to only a particular user
    socket.on('send_invitation', (message) => {
        
            var data = JSON.parse(message);
            console.log(data);
            //Send message to only that particular room
            io.in(data.message.receiverChatID).emit('receive_invitation',{
                'messageContent': data.message.content,
                'sender': data.message.senderChatID,
                'receiver':data.message.receiverChatID,
                'meetingMode':data.message.meeting_mode,
                'dateMeetings':data.message.date,
                'timeMeetings':data.message.time,
                'senderName':data.message.senderName,
            })
    })  

    //Send message to only a particular user
    socket.on('send_message', (message) => {
        
            var data = JSON.parse(message);
            // receiverChatID = data.message.receiverChatID
            // senderChatID = data.message.senderChatID
            // content = data.message.content
            console.log(data);
    
            
            
    
            //Send message to only that particular room
            io.in(data.message.receiverChatID).emit('receive_message',{
                'content': data.message.content,
                'senderChatID': data.message.senderChatID,
                'receiverChatID':data.message.receiverChatID,
            })
        
        
        //io.off("receive_message");
       
        // console.log({'chat':{
        //     'content': content,
        //     'senderChatID': senderChatID,
        //     'receiverChatID':receiverChatID,
        // }})
    })

    socket.on('disconnect', function() {
        console.log('one user disconnected ' + socket.id);
    });
});



http.listen(8080,()=>{
    console.log("Server is running...");
})