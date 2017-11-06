.class Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->access$202(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;Z)Z

    .line 1053
    return-void

    .line 1052
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
