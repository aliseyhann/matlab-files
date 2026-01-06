%%%%%%%Structures%%%%%%%

%% Sample 1
fruits1.name = 'apple';
fruits1.quantity = 3;

fruits2.name = {'apple' 'banana' 'strawberry'};
fruits2.quantity = [3 5 10];

% write fruits2 on command window

%% Sample 2
fruits3 = struct('name', 'apple', 'quantity', 3);

fruits4 = struct('name', {{'apple' 'banana' 'strawberry'}}, 'quantity', [3 5 10]);

fruits5 = struct('name', {'apple' 'banana' 'strawberry'}, 'quantity', {3 5 10});

%% Sample 3 -Accessing/Extracting Data from Structures

fruitsTable.name = {'apple' 'banana' 'strawberry'};
fruitsTable.quantity = [3 5 10];
fruitsTable.price = [5.5 10 30];

%cost of one fruit
costApples = fruitsTable.quantity(1) * fruitsTable.price(1);

%total cost of all fruits
costAll = 0;
for i=1:3
    cost = fruitsTable.quantity(i) * fruitsTable.price(i);
    costAll = costAll + cost;
end

clear cost

%% Sample 4 -Accessing/Extracting Data from Structures

fruitsTable.name = {'apple' 'banana' 'strawberry'};
fruitsTable.quantity = [3 5 10];
fruitsTable.price = [5 10 30];

fruitsTable.quantity(3) = 5;

for i=1:3
    fruitsTable.price(i) = fruitsTable.price(i) + fruitsTable.price(i) * 0.1;
end

%% Sample 5
numberOfFruitType = input('Enter number of items: ');

for k = 1:numberOfFruitType
 fruitName = input('Enter fruit name: ', 's');
 quantity = sprintf('Enter quantity of %s: ', fruitName);
 fruitQuantity = input(quantity);
 
 fruitsTable(k).name = fruitName;
 fruitsTable(k).quantity = fruitQuantity;
end

disp(fruitsTable)

clear k
%% Sample 6

 fruitName = input('Enter fruit name: ', 's');
 fruitPrice = input('Enter fruit price: ');
 fruitColor = input('Enter the color of fruit: ', 's');

 fruitsTable2.(fruitName).price = fruitPrice;
 fruitsTable2.(fruitName).color = fruitColor;

 %% Sample 7
 fruitsTable = struct('name', {'apple' 'banana' 'strawberry'}, 'quantity', {3 5 10});
 disp(fruitsTable(2));  % display 2.row
 
 prices ={fruitsTable.quantity};
 meanPrices = mean(cell2mat(prices));
 disp(meanPrices);  %display the mean of prices v1
 
meanPrices2 = mean([fruitsTable.quantity]);
disp(meanPrices2);  %display the mean of prices v2

%% sample 8
fruitTable1 = struct('name', {'apple' 'banana' 'strawberry'}, 'quantity', {3 5 10}, 'price', {5.5 10 30});

fruitTable1.name(1); %error
fruitTable1(1).name;
fruitTable1.quantity(1); %error
fruitTable1(1).quantity;

fruitTable2 = struct('name', {'apple' 'banana' 'strawberry'}, 'quantity', [3 5 10], 'price', [5.5 10 30]);

fruitTable2.name(1); %error
fruitTable2(1).name;
fruitTable2.quantity(1); %error
fruitTable2(1).quantity;
fruitTable2(1).quantity(2);

fruitTable3.name = {'apple' 'banana' 'strawberry'};
fruitTable3.quantity = [3 5 10];
fruitTable3.price = [5.5 10 30];

fruitTable3.name(1); 
fruitTable3(1).name;    %no error but it is not a true usage fruitTable3.name
fruitTable3.quantity(1);
fruitTable3(1).quantity; %no error but it is not a true usage fruitTable3.quantity

fruitTable4 = struct('name', {'apple' 'banana' 'strawberry'},...
    'quantity', {3 5 10}, 'price', {5.5 10 30}, 'color', ...
    {{'Red' 'Yellow' 'Green'}, {'Yellow'}, {'Red'}});

fruitTable5.name = {'apple' 'banana' 'strawberry'};
fruitTable5.quantity = [3 5 10];
fruitTable5.price = [5.5 10 30];
fruitTable5.color = {{'Red' 'Yellow' 'Green'}, {'Yellow'}, {'Red'}};

fruitTable5(1).color;
fruitTable5(1).color(1);
fruitTable5(1).color{1,1};
fruitTable5(1).color{1,2};
fruitTable5(1).color{1,1}(1);
