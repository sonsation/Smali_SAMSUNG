.class Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;
.super Ljava/lang/Object;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CapturedImage"
.end annotation


# instance fields
.field hole:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field isBlur:Z

.field numHole:I

.field final synthetic this$1:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .prologue
    const/4 v0, 0x0

    .line 1277
    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->this$1:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->numHole:I

    .line 1279
    iput-boolean v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->isBlur:Z

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->hole:Ljava/util/ArrayList;

    .line 1277
    return-void
.end method
