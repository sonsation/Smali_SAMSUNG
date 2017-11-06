.class Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->access$000(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setPrevImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->this$0:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setNextImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    return-void
.end method
