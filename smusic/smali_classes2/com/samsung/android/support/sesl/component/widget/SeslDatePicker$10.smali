.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$10;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->removeAllCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    .line 1765
    return-void
.end method
