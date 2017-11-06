.class Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$5;
.super Ljava/lang/Object;
.source "ButtonEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

.field final synthetic val$ss:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$5;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$5;->val$ss:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$5;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$600(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$5;->val$ss:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method
