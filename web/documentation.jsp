<%-- 
    Document   : documentation
    Created on : Sep 10, 2015, 4:58:03 PM
    Author     : tobias
--%>

<jsp:include page="/includes/header.jsp"/>

<div class="container-fluid">
    <h1>Github links</h1>
    <a href="https://github.com/hardboilr/AdvancedChat" target="_blank">Advanced chat</a>
    <br>
    <a href="https://github.com/hardboilr/AdvancedChatWebApp" target="_blank">Advanced chat webapp</a>
</div>

<div class="container-fluid">
    <h1>Documentation</h1>
    <h3>Design</h3>
    <p>We are using the observer pattern in the chat system. We are doing this because it is easier to update the GUI, with the updated USERLIST and new messages. <br>
        This way the client calls the GUI to update with the new messages.  <br>
        The MVC pattern is also in use, we have seperated the logic, GUI and models in our system. <br>
        We have all our logic in the EchoServer, EchoClient, ClientHandler and ParseCommands classes, our models are in MessagePackage, and ProtocolStrings, and last we have our GUI in ClientGUI.
    </p>
    <h3>Division of labour</h3>
    <p>Sebastian made the client unit test.<br>
        Tobias made the website.<br>
        Jonas made the parseusercommands test. <br>
        Everybody has contributed equally to the making of the server and client, this was all made looking over each other's shoulder, and we believe that we all deserve the same amount of study points.
    </p>
    <h3>Testing</h3>
    <h4>jUnit tests</h4>
    <p>An image of the test results from JUnit<br>
        <img src="pictures/jUnit.PNG" class="img-responsive" alt="Picture of jUnit tests"/>
        If you wanna run the jUnit test yourself, you might need to add jUnit 4.12 as a library, it is placed in the netbeansproject, in the folder library</p>
    <h4>Testing with another server and client</h4>
    <p>We have tested our server and client with another group server and client. It worked well, we could connect to their server with our client and vice versa. <br>
        All the messages we sent, went through without trouble.
    </p>
    <h3>State behaviour</h3>
    <p>We use a list to save all the clienthandlers, each clienthandler is its own thread.<br>
        The server is listening for incoming messages, and then notifies the clienthandlers, that then sends the messages to the clients that need it.<br>
        This means that the clienthandlers is "looping", and waiting for the server to call notify observers, which then, updates the clienthandlers.<br>
        This way we avoid using many resources, having the clienthandlers listening for messages, all the time, now the clienthandlers only use resources when it updates the clients.
    </p>
</div>

<jsp:include page="/includes/footer.jsp"/>
