.class public Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
.super Ljava/lang/Object;
.source "SVirtualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchParams"
.end annotation


# static fields
.field public static FLAG_BASE_ACTIVITY:I

.field public static FLAG_CLEAR_TASKS:I

.field public static FLAG_FOCUS_POLICY:I

.field public static FLAG_LAYOUT_POLICY:I

.field public static FLAG_NO_ANIMATION:I

.field public static FLAG_RECREATE_VIRTUALSCREEN:I

.field public static FLAG_REUSE_TASK_POLICY:I

.field public static FLAG_ZEROPAGE_POLICY:I


# instance fields
.field public baseDisplayId:I

.field public bounds:Landroid/graphics/Rect;

.field public displayId:I

.field public flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_BASE_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    .line 211
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_CLEAR_TASKS:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_CLEAR_TASKS:I

    .line 212
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_NO_ANIMATION:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_NO_ANIMATION:I

    .line 213
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    .line 214
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_LAYOUT_POLICY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_LAYOUT_POLICY:I

    .line 215
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_FOCUS_POLICY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_FOCUS_POLICY:I

    .line 216
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    .line 217
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FLAG_REUSE_TASK_POLICY:I

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_REUSE_TASK_POLICY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    .line 221
    iput v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    .line 222
    iput v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->baseDisplayId:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 224
    return-void
.end method
