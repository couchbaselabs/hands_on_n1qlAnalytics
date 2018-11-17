./recreate_buckets.sh password
./load_data.sh password
# To complete travel-sample installation
sleep 60
./drop_dataset.sh
./create_dataset.sh
case `uname` in
     Linux)
       ./builds/centos7/hands_on_n1qlAx &
        ;;
     Darwin)
       ./builds/mac_os/hands_on_n1qlAx &
        ;;
     *)
       ./hands_on_n1ql &
        ;;
esac
