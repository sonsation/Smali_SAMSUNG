.class Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "SeslMaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->invalidateSelf()V

    .line 454
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 459
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method
