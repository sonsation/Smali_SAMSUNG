.class public Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
.super Ljava/lang/Object;
.source "TrayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/tray/TrayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrayEvent"
.end annotation


# static fields
.field public static final EVENT_CHANGED_OFFSET_Y:I = 0x2

.field public static final EVENT_CHANGE_STAGE:I = 0xa

.field public static final EVENT_MOVE_END:I = 0x5

.field public static final EVENT_MOVE_START:I = 0x4

.field public static final EVENT_SET_Y_OFFSET:I = 0x1

.field public static final EVENT_TOUCH_UP:I = 0x3


# instance fields
.field public mDisallowVisible:Z

.field public final mEventType:I

.field public final mValue:F


# direct methods
.method constructor <init>(IF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # F

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mEventType:I

    .line 155
    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    .line 156
    return-void
.end method
