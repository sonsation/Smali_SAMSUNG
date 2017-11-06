.class Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$4;
.super Landroid/database/DataSetObserver;
.source "SeslActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->updateAppearance()V

    .line 274
    return-void
.end method
