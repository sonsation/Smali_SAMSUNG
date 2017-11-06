.class public Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionState"
.end annotation


# instance fields
.field public enteringEpicenterView:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;

.field public hiddenFragmentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nonExistentView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    .line 1545
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->enteringEpicenterView:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;

    return-void
.end method
