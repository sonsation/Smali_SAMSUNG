.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->doInvalidatePanelMenu(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->doInvalidatePanelMenu(I)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuPosted:Z

    .line 240
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iput v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mInvalidatePanelMenuFeatures:I

    .line 241
    return-void
.end method
