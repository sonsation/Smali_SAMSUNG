.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;
.super Ljava/lang/Object;
.source "MultipleItemPickerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(IZLjava/lang/String;)Landroid/app/Fragment;
    .locals 6
    .param p0, "listType"    # I
    .param p1, "useBlurUi"    # Z
    .param p2, "uriAuthorityBase"    # Ljava/lang/String;

    .prologue
    .line 13
    sparse-switch p0, :sswitch_data_0

    .line 39
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not Matched ListType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 15
    :sswitch_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;

    move-result-object v2

    .line 16
    .local v2, "fg":Landroid/app/Fragment;
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getScreenId(Z)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "eventScreen":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v0, "2604"

    .line 42
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v2

    .line 17
    .end local v0    # "eventId":Ljava/lang/String;
    :cond_0
    const-string v0, "6073"

    goto :goto_0

    .line 21
    .end local v1    # "eventScreen":Ljava/lang/String;
    .end local v2    # "fg":Landroid/app/Fragment;
    :sswitch_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    move-result-object v2

    .line 22
    .restart local v2    # "fg":Landroid/app/Fragment;
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getScreenId(Z)Ljava/lang/String;

    move-result-object v1

    .line 23
    .restart local v1    # "eventScreen":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v0, "2605"

    .line 25
    .restart local v0    # "eventId":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 23
    .end local v0    # "eventId":Ljava/lang/String;
    :cond_1
    const-string v0, "6074"

    goto :goto_1

    .line 27
    .end local v1    # "eventScreen":Ljava/lang/String;
    .end local v2    # "fg":Landroid/app/Fragment;
    :sswitch_2
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    move-result-object v2

    .line 28
    .restart local v2    # "fg":Landroid/app/Fragment;
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->getScreenId(Z)Ljava/lang/String;

    move-result-object v1

    .line 29
    .restart local v1    # "eventScreen":Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string v0, "2606"

    .line 31
    .restart local v0    # "eventId":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 29
    .end local v0    # "eventId":Ljava/lang/String;
    :cond_2
    const-string v0, "6075"

    goto :goto_2

    .line 33
    .end local v1    # "eventScreen":Ljava/lang/String;
    .end local v2    # "fg":Landroid/app/Fragment;
    :sswitch_3
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    move-result-object v2

    .line 34
    .restart local v2    # "fg":Landroid/app/Fragment;
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getScreenId(Z)Ljava/lang/String;

    move-result-object v1

    .line 35
    .restart local v1    # "eventScreen":Ljava/lang/String;
    if-eqz p1, :cond_3

    const-string v0, "2607"

    .line 37
    .restart local v0    # "eventId":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 35
    .end local v0    # "eventId":Ljava/lang/String;
    :cond_3
    const-string v0, "6076"

    goto :goto_3

    .line 13
    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_2
        0x10007 -> :sswitch_3
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method
