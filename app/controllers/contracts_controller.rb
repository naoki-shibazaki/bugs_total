class ContractsController < ApplicationController
    def index
        @contracts = Contract.all
    end

    def new
        @contract = Contract.new
    end

    def create
        @contract = Contract.new(contract_params)
        if @contract.save 
            redirect_to contracts_path(@contract), notice: 'contract'
        else
            render 'new'
        end
    end

    private

    def contract_params
        params.require(:contract).permit(:woker, 
            :contractStart, 
            :contractEnd, 
            :closingDate, 
            :documentIssueDate, 
            :companyRepresentative, 
            :totalContractPeriod)
    end
end
