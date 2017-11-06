.class Lcom/samsung/android/app/music/list/local/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 240
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    .line 241
    .local v2, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v10

    .line 242
    .local v10, "c":Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 243
    const-string v3, "SMUSIC-UiList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid item selected id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {v2, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v14

    .line 249
    .local v14, "mimeType":I
    const/4 v11, 0x0

    .line 250
    .local v11, "detail":Ljava/lang/String;
    packed-switch v14, :pswitch_data_0

    .line 278
    const/4 v12, 0x0

    .line 280
    .local v12, "eventId":Ljava/lang/String;
    :goto_1
    if-eqz v12, :cond_0

    .line 281
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 282
    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getScreenId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v12, v11}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v12    # "eventId":Ljava/lang/String;
    :pswitch_0
    const-string v3, "_id"

    .line 253
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, "keyWord":Ljava/lang/String;
    const-string v3, "artist"

    .line 255
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "artistTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v3, v13, v9, v7}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$400(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    .line 258
    const-string v12, "1302"

    .line 259
    .restart local v12    # "eventId":Ljava/lang/String;
    goto :goto_1

    .line 261
    .end local v9    # "artistTitle":Ljava/lang/String;
    .end local v12    # "eventId":Ljava/lang/String;
    .end local v13    # "keyWord":Ljava/lang/String;
    :pswitch_1
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 262
    .local v4, "albumId":J
    const-string v3, "album"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "albumTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 264
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;ZLandroid/os/Bundle;)V

    .line 265
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$500(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    .line 266
    const-string v12, "1303"

    .line 267
    .restart local v12    # "eventId":Ljava/lang/String;
    goto :goto_1

    .line 271
    .end local v4    # "albumId":J
    .end local v6    # "albumTitle":Ljava/lang/String;
    .end local v12    # "eventId":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$600(Lcom/samsung/android/app/music/list/local/SearchFragment;I)V

    .line 272
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "SCPY"

    const-string v8, "Samsung Music"

    invoke-static {v3, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v12, "1304"

    .line 275
    .restart local v12    # "eventId":Ljava/lang/String;
    const-string v11, "Local"

    .line 276
    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
