package bloop.honk.View;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.ArrayList;
import java.util.List;

import bloop.honk.Controller.CarParkController;
import bloop.honk.Model.CarPark;
import bloop.honk.R;

public class CarParkFragment extends Fragment {
    private List<CarPark> carParks = new ArrayList<>();

    private RecyclerView recyclerView;
    private CarParkAdapter adapter;
    private CarParkController con;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_carparks, container, false);
        getActivity().setTitle("Car Parks");
        Log.v("oncreate","bullshit");
        recyclerView = view.findViewById(R.id.carparksrecycler);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));

        adapter = new CarParkAdapter(getActivity(), carParks);
        recyclerView.setAdapter(adapter);
        con = new CarParkController(getActivity(), adapter);

        con.fetchCarParks(carParks);
        adapter.setClickListener(new CarParkAdapter.ItemClickListener() {
            @Override
            public void onItemClick(View view, int position) {
            }
        });

        return view;
    }
}
