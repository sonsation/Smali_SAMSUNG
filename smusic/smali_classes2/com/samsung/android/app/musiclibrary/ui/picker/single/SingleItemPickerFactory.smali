.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;
.super Ljava/lang/Object;
.source "SingleItemPickerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(I)Landroid/app/Fragment;
    .locals 5
    .param p0, "listType"    # I

    .prologue
    .line 31
    sparse-switch p0, :sswitch_data_0

    .line 49
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not Matched ListType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :sswitch_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;-><init>()V

    .line 34
    .local v1, "fg":Landroid/app/Fragment;
    const-string v0, "6003"

    .line 52
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v1

    .line 37
    .end local v0    # "eventId":Ljava/lang/String;
    .end local v1    # "fg":Landroid/app/Fragment;
    :sswitch_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;-><init>()V

    .line 38
    .restart local v1    # "fg":Landroid/app/Fragment;
    const-string v0, "6004"

    .line 39
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 41
    .end local v0    # "eventId":Ljava/lang/String;
    .end local v1    # "fg":Landroid/app/Fragment;
    :sswitch_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;-><init>()V

    .line 42
    .restart local v1    # "fg":Landroid/app/Fragment;
    const-string v0, "6005"

    .line 43
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "eventId":Ljava/lang/String;
    .end local v1    # "fg":Landroid/app/Fragment;
    :sswitch_3
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment;-><init>()V

    .line 46
    .restart local v1    # "fg":Landroid/app/Fragment;
    const-string v0, "6006"

    .line 47
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_2
        0x10007 -> :sswitch_3
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method
