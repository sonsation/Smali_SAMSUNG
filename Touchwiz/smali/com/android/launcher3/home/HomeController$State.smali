.class public Lcom/android/launcher3/home/HomeController$State;
.super Ljava/lang/Object;
.source "HomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final DRAG:I = 0x2

.field public static final NONE:I = 0x0

.field public static final NORMAL:I = 0x1

.field public static final OVERVIEW:I = 0x4

.field public static final RESIZE:I = 0x3

.field public static final SCREENGRID:I = 0x5

.field public static final SELECT:I = 0x6


# instance fields
.field private mCurrentState:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/android/launcher3/home/HomeController$State;->mCurrentState:I

    .line 292
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeController$State;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController$State;
    .param p1, "x1"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController$State;->equal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/HomeController$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController$State;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/launcher3/home/HomeController$State;->mCurrentState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeController$State;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController$State;
    .param p1, "x1"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController$State;->set(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeController$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController$State;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController$State;->get()I

    move-result v0

    return v0
.end method

.method private equal(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 303
    iget v0, p0, Lcom/android/launcher3/home/HomeController$State;->mCurrentState:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private get()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/launcher3/home/HomeController$State;->mCurrentState:I

    return v0
.end method

.method private set(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/android/launcher3/home/HomeController$State;->mCurrentState:I

    .line 296
    return-void
.end method
