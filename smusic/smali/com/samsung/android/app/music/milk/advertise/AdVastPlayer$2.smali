.class Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$2;
.super Ljava/lang/Object;
.source "AdVastPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->onAdPlayerReceive(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "Advert.AdVideoView"

    const-string/jumbo v1, "onManPlayerReceive : ManVideoPlayer.MAN_PLAYER_AD_START block false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;->onBlock(Z)V

    .line 120
    return-void
.end method
