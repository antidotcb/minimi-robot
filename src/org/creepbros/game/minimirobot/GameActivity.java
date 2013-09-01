package org.creepbros.game.minimirobot;

import android.app.Activity;
import android.os.Bundle;

public class GameActivity extends Activity {
	/**
	 * The GLES3 JNI View
	 */
    private GLES3JNIView mView;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		mView = new GLES3JNIView(getApplication());
        setContentView(mView);		
	}
	
    @Override protected void onPause() {
        super.onPause();
        mView.onPause();
    }

    @Override protected void onResume() {
        super.onResume();
        mView.onResume();
    }

}
