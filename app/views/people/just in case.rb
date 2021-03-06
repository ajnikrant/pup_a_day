<div class= "adopted">
        <h4> Members of your Pack: </h4>
        <% if @person.puppies.count > 0 %>
                <%@person.puppies.each do |puppy|%>
                    <%if puppy.adoption == true%>
                    <img class="index-img" src="<%= puppy.image%>" alt="<%= puppy.name %>"width="150" height="150">
                <ul>
                
                    <li><%=puppy.name%><br>
                    </li>
                </ul>
                    <%end%>
                <%end%> <br><br>
        <%else%>
            Looks like you havent adopted any puppies... <br><br>
        <%end%>
    </div>

    <div class = "upcoming">
        <h4> Your upcoming Puppy Rentals: </h4>
        <%if @person.rentals.count > 0 %>
        <div class="upcoming-container"> 
                <% @person.rentals.each do |rental|%>
                    <%if rental.complete == nil  && rental.puppy.adoption == nil|| rental.complete == false && rental.puppy.adoption == nil && rental.puppy.adoption == nil%>
                    <div class="upcoming-card"> 
                        <img class="index-img" src="<%= rental.puppy.image%>" alt="<%= rental.puppy.name %>"width="150" height="150">
                        <ul>
                                <li class="puppy_name"><%=link_to rental.puppy.name, puppy_path(rental.puppy.id)%><br>
                                    <p class="rental_time">Date: <%= rental.date%></p>
                                </li>
                        </ul>
                   
                        <div class="button_cancel"><%= button_to "Cancel Rental", rental_path(rental.id), method: :delete,data:{confirm:"Sure?"}, class:"btn btn-outline-warning btn_cancel" %>
                         <%= button_to "Completed!", rental_path(rental.id), method: :patch, class: "btn btn-outline-secondary btn1" %>
                        </div>
                     </div>    
                    <%end%>
                <%end%>
            </div>

        <%else%>
            <p class="upcoming">Looks like you dont have any upcoming Puppy Rentals...</p> <br><br>
        <%end%>
    </div>

    <div class= "previous">
    
    <h4> Your Previous Puppy Rentals: </h4>
    <div class="previous-container">  
        <%if @person.rentals.count > 0 %>
                <%@person.rentals.each do |rental|%>
                    
                    <%if rental.complete == true && rental.puppy.adoption == nil%>
                        <div class="previous-card"> 
                            <img class="index-img" src="<%= rental.puppy.image%>" alt="<%= rental.puppy.name %>"width="150" height="150">
                            <ul>
                                <li class="adopt_puppy"> <%=link_to rental.puppy.name, puppy_path(rental.puppy.id)%><br>
                                </li>
                            </ul>
                            <%= button_to "Adopt this Puppy", puppy_path(rental.puppy.id), method: :patch, class: "btn btn-outline-secondary btn1"  %>
                        </div>
                    <%end%>
                <%end%>
               
                </div>
        <%else%>
            Looks like you dont have any completed Puppy Rentals... <br><br>
        <%end%>
        
    </div>

  
