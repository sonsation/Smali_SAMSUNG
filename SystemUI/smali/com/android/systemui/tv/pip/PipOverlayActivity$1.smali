.class Lcom/android/systemui/tv/pip/PipOverlayActivity$1;
.super Ljava/lang/Object;
.source "PipOverlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipOverlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipOverlayActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipOverlayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipOverlayActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity$1;->this$0:Lcom/android/systemui/tv/pip/PipOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOverlayActivity$1;->this$0:Lcom/android/systemui/tv/pip/PipOverlayActivity;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->-get0(Lcom/android/systemui/tv/pip/PipOverlayActivity;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 54
    return-void
.end method
