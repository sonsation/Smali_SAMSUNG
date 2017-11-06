.class Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlurImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->crossFadeTo(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private fireOnCrossFadeCompleted()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->access$200(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->access$200(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;->onCrossFadeCompleted(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;->fireOnCrossFadeCompleted()V

    .line 165
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;->fireOnCrossFadeCompleted()V

    .line 160
    return-void
.end method
