package global.sesoc.web5.vo;

public class Board {
	int boardnum;	
	String id;			
	String title;		
	String contents;	
	String inputdate;	
	int hits;		
	String originalfile;	
	String savedfile;		
	
	public Board() {
		
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getOriginalfil() {
		return originalfile;
	}

	public void setOriginalfil(String originalfil) {
		this.originalfile = originalfil;
	}

	public String getSavedfile() {
		return savedfile;
	}

	public void setSavedfile(String savedfile) {
		this.savedfile = savedfile;
	}

	@Override
	public String toString() {
		return "Board [boardnum=" + boardnum + ", id=" + id + ", title=" + title + ", contents=" + contents
				+ ", inputdate=" + inputdate + ", hits=" + hits + ", originalfil=" + originalfile + ", savedfile="
				+ savedfile + "]";
	}

}
