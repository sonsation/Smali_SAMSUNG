.class public final Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;
.super Ljava/lang/Object;
.source "LocalPlayingItemFactory.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayingItem(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uriType"    # I
    .param p4, "keyword"    # Ljava/lang/String;
    .param p5, "listPosition"    # I
    .param p6, "listSize"    # I
    .param p7, "playDirection"    # I

    .prologue
    .line 21
    if-nez p2, :cond_0

    .line 22
    const-string v0, "SMUSIC-SV-List"

    const-string/jumbo v1, "uri is null in getPlayingItem method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-string v0, "SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayingItem() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] currentUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    packed-switch p3, :pswitch_data_0

    .line 32
    invoke-static {p1, p2, p6, p5, p7}, Lcom/samsung/android/app/music/service/metadata/MusicProviderPlayingItem;->getInstance(Landroid/content/Context;Landroid/net/Uri;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_0
    invoke-static {p1, p2, p6, p5, p7}, Lcom/samsung/android/app/music/service/metadata/DlnaDmsPlayingItem;->getInstance(Landroid/content/Context;Landroid/net/Uri;III)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
