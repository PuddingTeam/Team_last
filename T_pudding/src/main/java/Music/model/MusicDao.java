package Music.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("myMusicDao")
public class MusicDao {
	
	@Autowired
	SqlSessionTemplate sqlsessiontemplate;
	
	private String namespace = "Music.model.Music";
	
	public void update(Music music) {
		sqlsessiontemplate.update(namespace+".updatedata",music);
	}
	
	public void insertData(Music music) {
		System.out.println(music.getMusic_title());
		System.out.println(music.getMusic_singer());
		sqlsessiontemplate.insert(namespace+".insertdata",music);
	}
	public Music selectOne(int mno) {
		Music music = new Music();
		music = sqlsessiontemplate.selectOne(namespace+".selectOne", mno);
		return music;
	}
	public Music getmusicdj(String music_title) {
		Music music = new Music();
		System.out.println(music_title);
		music = sqlsessiontemplate.selectOne(namespace+".hehehehe", music_title);
		System.out.println(music.getMusic_date());
		return music;
	}
	public void deleteData(int mno) {
		sqlsessiontemplate.delete(namespace+".delete",mno);
	}
	public List<Music> selectdj(String music_dj) {
		String dj = music_dj+",";
		List<Music> music = new ArrayList<Music>();
		music = sqlsessiontemplate.selectList(namespace+".selectDj",dj);
		return music;
	}
	public void deleteDj(Djmusic djmusic) {
		System.out.println("list"+djmusic.getDjmusicl());
		System.out.println("dj"+djmusic.getDjtitle());
		sqlsessiontemplate.update("Music.model.Djmusic.deleteDj",djmusic);
	}
	public void deleteoneDj(Djmusic djmusic) {
		System.out.println("list"+djmusic.getDjmusicl());
		System.out.println("dj"+djmusic.getDjtitle());
		sqlsessiontemplate.update("Music.model.Djmusic.deleteoneDj",djmusic);
	}
	public void insertDj(String djmusicl, String djtitle) {
		System.out.println(djmusicl);
		djtitle=djtitle+",";
		Djmusic djmusic = new Djmusic(djmusicl, djtitle);
		System.out.println(djmusic.getDjtitle());
		int cnt=sqlsessiontemplate.update("Music.model.Djmusic.updateDj",djmusic);
		System.out.println(cnt);
	}

	public List<Music> getDataList() {
		List<Music> lists = new ArrayList<Music>();
		lists = sqlsessiontemplate.selectList(namespace+".GetDataList");
		return lists;
		
	}
	
	public List<Music> getSingerDataList(String music_singer) {
		List<Music> lists = new ArrayList<Music>();
		lists = sqlsessiontemplate.selectList(namespace+".getSingerDataList", music_singer);
		return lists;
		
	}
	
	public List<Music> 	getDataSearchtList(String search){
		List<Music> lists = new ArrayList<Music>();
		lists = sqlsessiontemplate.selectList(namespace+".getDataSearchtList", search);
		return lists;
		
	}
	public Music getOneData(int mno) {
		Music music = new Music();
		music = sqlsessiontemplate.selectOne(namespace+".GetOneData",mno);
		return music;
	}

	public void recountplus(int mno) {
		
		sqlsessiontemplate.update(namespace+".recountPlus",mno);
	}


	public void heartPlus(int musicheart, int mno) {
		Music music=new Music();
		music.setMno(mno);
		music.setMusic_heart(musicheart);
		 sqlsessiontemplate.update(namespace+".heartPlus",music);
		
	}


	public List<Music> getheartlist() {
		
		List<Music> heartlist = new ArrayList<Music>();
	heartlist =	sqlsessiontemplate.selectList(namespace+".heartList");
		
		return heartlist;
	}

	public List<Music> getrecountlist() {		
		List<Music> recountlist = new ArrayList<Music>();
		recountlist =	sqlsessiontemplate.selectList(namespace+".recountlist");
		
		return recountlist;
	}
	
	
	public List<Music> getDataHeartList() {
		List<Music> lists = new ArrayList<Music>();
		lists = sqlsessiontemplate.selectList(namespace+".getDataHeartList");
		return lists;
	}
	
	public List<Music> getDataRecountList() {
		List<Music> lists = new ArrayList<Music>();
		lists = sqlsessiontemplate.selectList(namespace+".getDataRecountList");
		return lists;
	}
}
