class IndividualsController < ApplicationController
    def index
        @individuals = Individual.all
    end

    def new
        @individual = Individual.new
    end

    def create
        @individual = Individual.new(individual_params)
        if @individual.save 
            redirect_to individuals_path(@individual), notice: 'individual'
        else
            render 'new'
        end
    end

    private

    def individual_params
        params.require(:individual).permit(:companyName,
            :contactExtension,
            :contactAccounting,
            :phoneNumber,
            :faxNumber,
            :headOfficeAddress,
            :contractType,
            :contractPrice,
            :minimumHours,
            :maximumHours,
            :deduction,
            :overtime,
            :settlementUnit,
            :paymentSite,
            :toporunder)
    end

end
