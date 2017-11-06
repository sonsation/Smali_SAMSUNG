.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;
.super Ljava/lang/Object;
.source "IMusicProviderHelper.java"


# virtual methods
.method public abstract insertOnlineAlbumsToAlbumTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)Landroid/content/ContentValues;
.end method

.method public abstract insertOnlineArtistsToArtistTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)Landroid/content/ContentValues;
.end method

.method public abstract insertOnlineTracksToAudioTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;
.end method

.method public abstract updateOnlineTracksFromAudioTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)V
.end method
