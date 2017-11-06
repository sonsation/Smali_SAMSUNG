.class Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$1;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$ViewRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->configureTransitions(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

.field final synthetic val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$1;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$1;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
