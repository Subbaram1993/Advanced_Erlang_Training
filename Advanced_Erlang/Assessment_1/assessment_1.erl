
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%								%%%
%%%    Assesment_1_ADVANCED_ERLANG				%%%
%%%								%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%								%%%
%%%			REVISION LOG				%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%								%%%
%%% 04/Aug/2024	Subbu	Initial Draft for the Pack and Unpack	%%%
%%%			the data from the tuples and Lists.	%%%
%%%								%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-module(assessment_1).
-export([create_house/3, create_street/1, unpack_house/1, unpack_street/1,start/0]).

% Define a house as a tuple with address, number of bedrooms, and number of bathrooms
create_house(Address, Bedrooms, Bathrooms) ->
    {Address, Bedrooms, Bathrooms}.

% Define a street as a list of houses
create_street(Houses) ->
    Houses.

% Unpack the data from a house tuple
unpack_house(House) ->
    {Address, Bedrooms, Bathrooms} = House,
    io:format("Address: ~p, Bedrooms: ~p, Bathrooms: ~p~n", [Address, Bedrooms, Bathrooms]).

% Unpack the data from the street list
unpack_street(Street) ->
    lists:foreach(fun(House) ->
        {Address, Bedrooms, Bathrooms} = House,
        io:format("Address: ~p, Bedrooms: ~p, Bathrooms: ~p~n", [Address, Bedrooms, Bathrooms])
    end, Street).


start() ->
    House1 = create_house("123 Main St", 3, 2),
    House2 = create_house("456 Elm St", 4, 3),
    House3 = create_house("1c/2-72, West Street", 2, 1),
    Street = create_street([House1, House2, House3]),
    io:fwrite("~n Printing House Details: ~n"),
    unpack_house(House1),
    io:fwrite("~n Printing Street Details: ~n"),
    unpack_street(Street).
