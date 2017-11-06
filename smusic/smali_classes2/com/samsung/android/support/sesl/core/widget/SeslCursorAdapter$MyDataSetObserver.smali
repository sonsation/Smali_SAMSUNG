.class Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SeslCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$MyDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 492
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$MyDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->mDataValid:Z

    .line 497
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$MyDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->notifyDataSetChanged()V

    .line 498
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$MyDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->mDataValid:Z

    .line 503
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$MyDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->notifyDataSetInvalidated()V

    .line 504
    return-void
.end method
