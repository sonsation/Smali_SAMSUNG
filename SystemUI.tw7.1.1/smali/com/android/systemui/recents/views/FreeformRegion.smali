.class Lcom/android/systemui/recents/views/FreeformRegion;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# static fields
.field public static PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->FREEFORM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sput-object v0, Lcom/android/systemui/recents/views/FreeformRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
