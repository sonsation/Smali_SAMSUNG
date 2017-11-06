.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 87
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 88
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 92
    :cond_0
    const-wide/16 v2, -0x1

    .line 93
    .local v2, "audioId":J
    const/4 v7, -0x1

    .line 94
    .local v7, "listType":I
    const/4 v6, 0x0

    .line 95
    .local v6, "keyWord":Ljava/lang/String;
    const/4 v9, 0x0

    .line 97
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v8

    .line 99
    .local v8, "mimeType":I
    packed-switch v8, :pswitch_data_0

    .line 118
    const/4 v5, 0x0

    .line 120
    .local v5, "eventId":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_1

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getScreenId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v4, "data":Landroid/content/Intent;
    const-string v10, "extra_list_type"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v10, "extra_key_word"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v10, "extra_title"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v10, "extra_audio_id"

    invoke-virtual {v4, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 130
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/app/Activity;
    const/4 v10, -0x1

    invoke-virtual {v0, v10, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 132
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 101
    .end local v0    # "a":Landroid/app/Activity;
    .end local v4    # "data":Landroid/content/Intent;
    .end local v5    # "eventId":Ljava/lang/String;
    :pswitch_0
    const v7, 0x100003

    .line 102
    const-string v10, "_id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 103
    const-string v10, "artist"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 104
    const-string v5, "6053"

    .line 105
    .restart local v5    # "eventId":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v5    # "eventId":Ljava/lang/String;
    :pswitch_1
    const v7, 0x100002

    .line 108
    const-string v10, "_id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    const-string v10, "album"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 110
    const-string v5, "6054"

    .line 111
    .restart local v5    # "eventId":Ljava/lang/String;
    goto :goto_1

    .line 113
    .end local v5    # "eventId":Ljava/lang/String;
    :pswitch_2
    const v7, 0x110001

    .line 114
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getAudioId(I)J

    move-result-wide v2

    .line 115
    const-string v5, "6055"

    .line 116
    .restart local v5    # "eventId":Ljava/lang/String;
    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
