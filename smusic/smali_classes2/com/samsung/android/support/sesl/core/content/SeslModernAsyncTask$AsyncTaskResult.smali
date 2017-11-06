.class Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "SeslModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    .line 525
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 526
    return-void
.end method
