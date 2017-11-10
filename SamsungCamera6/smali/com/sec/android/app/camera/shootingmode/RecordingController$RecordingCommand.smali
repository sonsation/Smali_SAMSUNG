.class public final enum Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;
.super Ljava/lang/Enum;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "RecordingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

.field public static final enum CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

.field public static final enum IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

.field public static final enum PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

.field public static final enum RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

.field public static final enum START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

.field public static final enum STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    const-string v1, "START_RECORDING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    const-string v1, "PAUSE_RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    const-string v1, "RESUME_RECORDING"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    const-string v1, "STOP_RECORDING"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    const-string v1, "CANCEL_RECORDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    return-object v0
.end method
