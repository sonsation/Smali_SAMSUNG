.class public Lcom/samsung/android/app/musiclibrary/ui/util/DefaultListUtils;
.super Ljava/lang/Object;
.source "DefaultListUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListTypeTextResId(I)I
    .locals 4
    .param p0, "listType"    # I

    .prologue
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 42
    :pswitch_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tracks:I

    .line 45
    .local v0, "resId":I
    :goto_0
    const-string v1, "ListUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListTypeTextResId() - listType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listType text resId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v0

    .line 15
    .end local v0    # "resId":I
    :pswitch_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->albums:I

    .line 16
    .restart local v0    # "resId":I
    goto :goto_0

    .line 18
    .end local v0    # "resId":I
    :pswitch_2
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->artists:I

    .line 19
    .restart local v0    # "resId":I
    goto :goto_0

    .line 21
    .end local v0    # "resId":I
    :pswitch_3
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->playlists:I

    .line 22
    .restart local v0    # "resId":I
    goto :goto_0

    .line 24
    .end local v0    # "resId":I
    :pswitch_4
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->genres:I

    .line 25
    .restart local v0    # "resId":I
    goto :goto_0

    .line 27
    .end local v0    # "resId":I
    :pswitch_5
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->folders:I

    .line 28
    .restart local v0    # "resId":I
    goto :goto_0

    .line 30
    .end local v0    # "resId":I
    :pswitch_6
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->composers:I

    .line 31
    .restart local v0    # "resId":I
    goto :goto_0

    .line 33
    .end local v0    # "resId":I
    :pswitch_7
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->years:I

    .line 34
    .restart local v0    # "resId":I
    goto :goto_0

    .line 36
    .end local v0    # "resId":I
    :pswitch_8
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->bigpond_top_10:I

    .line 37
    .restart local v0    # "resId":I
    goto :goto_0

    .line 39
    .end local v0    # "resId":I
    :pswitch_9
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->nearby_devices:I

    .line 40
    .restart local v0    # "resId":I
    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
