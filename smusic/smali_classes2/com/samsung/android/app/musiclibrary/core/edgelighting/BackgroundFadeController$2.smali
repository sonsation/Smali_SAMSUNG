.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;
.super Ljava/lang/Object;
.source "BackgroundFadeController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->updateFadeState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

.field final synthetic val$color:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;->val$color:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, "curColor":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;->val$color:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->access$900(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$2;->val$color:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    return-void
.end method
