class Gate
    STATIONS = [:umeda, :juso, :mikuni]
    FARES = [150, 190]
    def initialize(name)
        @name = name
    end

    def enter(ticket)
        ticket.stamp(@name)
    end

    def exit(ticket)
        fare = calc_fare(ticket)
        fare <= ticket.fare
    end

    def calc_fare(ticket)
        # stationsの添字を取得して、fromとtoの添字の差分から乗車区間を取得している
        # サンプルプログラムなので、細かいことは気にしないこと
        from = STATIONS.index(ticket.stamped_at)
        to = STATIONS.index(@name)
        distance = to - from
        FARES[distance - 1]
    end
end