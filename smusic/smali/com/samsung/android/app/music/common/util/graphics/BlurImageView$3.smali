.class Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$3;
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
    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$3;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$3;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->access$102(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 149
    return-void
.end method
