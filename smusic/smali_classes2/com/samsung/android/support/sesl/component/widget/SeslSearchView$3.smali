.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$3;
.super Ljava/lang/Object;
.source "SeslSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSuggestionsAdapter:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 217
    :cond_0
    return-void
.end method
