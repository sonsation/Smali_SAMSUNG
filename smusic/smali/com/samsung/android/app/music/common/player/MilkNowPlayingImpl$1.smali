.class Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl$1;
.super Ljava/lang/Object;
.source "MilkNowPlayingImpl.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl$1;->this$0:Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
