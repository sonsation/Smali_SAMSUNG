.class public final Lcom/samsung/android/app/music/common/info/MusicPreference;
.super Lcom/samsung/android/app/musiclibrary/ui/info/DefaultPreference;
.source "MusicPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/info/MusicPreference$EnqueueOption;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$PlayOption;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$AutoOff;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Value;,
        Lcom/samsung/android/app/music/common/info/MusicPreference$Key;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/info/DefaultPreference;-><init>()V

    .line 16
    return-void
.end method

.method public static getMatchedPlaylistPrefKey(J)Ljava/lang/String;
    .locals 4
    .param p0, "playlistId"    # J

    .prologue
    .line 19
    long-to-int v0, p0

    .line 20
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a playlistId so no preference value returned."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :pswitch_0
    const-string v1, "favourite_played"

    .line 28
    :goto_0
    return-object v1

    .line 24
    :pswitch_1
    const-string v1, "most_played"

    goto :goto_0

    .line 26
    :pswitch_2
    const-string/jumbo v1, "recently_played"

    goto :goto_0

    .line 28
    :pswitch_3
    const-string/jumbo v1, "recently_added"

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
