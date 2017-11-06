.class Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "SeslActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;
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
    .line 129
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 135
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    .line 140
    return-void
.end method
