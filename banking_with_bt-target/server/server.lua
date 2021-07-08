--================================================================================================
--==                                VARIABLES - DO NOT EDIT                                     ==
--================================================================================================
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayer = ESX.GetPlayerFromId(_source)
	--
	amount = tonumber(amount)

	if xPlayer.getMoney() <= 0 or  xPlayer.getMoney() < amount or amount <= 0 then
		TriggerClientEvent('bank:result', _source, "error", "Você não tem dinheiro suficiente em mão.", 3500)
	else
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
		TriggerClientEvent('bank:result', _source, "error", "Montante Inválido.", 4500)
		else
		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', tonumber(amount))
		TriggerClientEvent('bank:result', _source, "inform", "Depósito efetuado. -" .. amount .. "€", 6500)
	end
end
end)


RegisterServerEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local base = 0
	local balance = 0
	--
	amount = tonumber(amount)
	base = xPlayer.getAccount('bank').money
	balance = xPlayer.getAccount('bank').money

	if balance <= 0 or balance < amount or amount <= 0 then
		TriggerClientEvent('bank:result', _source, "error", "Você não tem dinheiro suficiente no banco.", 3500)
	else
	if amount == nil or amount <= 0 or amount > base then
		TriggerClientEvent('bank:result', _source, "error", "Montante Inválido.", 3500)
	else
		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('bank:result', _source, "success", "Retirado +" .. amount .. "€", 5500)
	end
end
end)

RegisterServerEvent('bank:balance')
AddEventHandler('bank:balance', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	balance = xPlayer.getAccount('bank').money
	TriggerClientEvent('currentbalance1', _source, balance)
end)


RegisterServerEvent('bank:transfer')
AddEventHandler('bank:transfer', function(to, amountt)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local zPlayer = ESX.GetPlayerFromId(to)
	local balance = 0

	if(zPlayer == nil or zPlayer == -1) then
		TriggerClientEvent('bank:result', _source, "error", "Esse destinatário não existe.")
	else
		balance = xPlayer.getAccount('bank').money
		zbalance = zPlayer.getAccount('bank').money
		
		if tonumber(_source) == tonumber(to) then
			TriggerClientEvent('bank:result', _source, "error", "Você não pode transferir dinheiro para si mesmo.")
		else
			if balance <= 0 or balance < tonumber(amountt) or tonumber(amountt) <= 0 then
				TriggerClientEvent('bank:result', _source, "error", "Você não tem dinheiro suficiente no banco.")
			else
				xPlayer.removeAccountMoney('bank', tonumber(amountt))
				zPlayer.addAccountMoney('bank', tonumber(amountt))
				TriggerClientEvent('bank:result', _source, "success", "Transferência feita com sucesso.")
				TriggerClientEvent('bank:result', _source, "error", "- " .. amount .."€")
				TriggerClientEvent('bank:result', zPlayer, "success", "Rebeces-te uma transferência de ".. amountt .." euros")
			end
		end
	end
end)





