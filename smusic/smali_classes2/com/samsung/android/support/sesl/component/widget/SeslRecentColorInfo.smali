.class public Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;
.super Ljava/lang/Object;
.source "SeslRecentColorInfo.java"


# static fields
.field private static sCurrentColor:Ljava/lang/Integer;

.field private static sNewColor:Ljava/lang/Integer;

.field private static sRecentColorInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSelectedColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sSelectedColor:Ljava/lang/Integer;

    .line 9
    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sCurrentColor:Ljava/lang/Integer;

    .line 10
    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sNewColor:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    .line 16
    return-void
.end method

.method private updateRecentColorInfo(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "selectedColor"    # Ljava/lang/Integer;

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 60
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 62
    :cond_1
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sCurrentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNewColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sNewColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecentColorInfo()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSelectedColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sSelectedColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public initRecentColorInfo([I)V
    .locals 2
    .param p1, "colorIntegerArray"    # [I

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 49
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->updateRecentColorInfo(Ljava/lang/Integer;)V

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public saveSelectedColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sSelectedColor:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "currentColor"    # Ljava/lang/Integer;

    .prologue
    .line 35
    sput-object p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sCurrentColor:Ljava/lang/Integer;

    .line 36
    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "newColor"    # Ljava/lang/Integer;

    .prologue
    .line 39
    sput-object p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->sNewColor:Ljava/lang/Integer;

    .line 40
    return-void
.end method
