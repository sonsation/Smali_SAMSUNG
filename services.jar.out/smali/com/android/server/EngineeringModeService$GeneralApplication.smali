.class public final Lcom/android/server/EngineeringModeService$GeneralApplication;
.super Lcom/android/server/EngineeringModeService$EMClient;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GeneralApplication"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/EngineeringModeService;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/server/EngineeringModeService$GeneralApplication;->this$0:Lcom/android/server/EngineeringModeService;

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/android/server/EngineeringModeService$EMClient;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method public isEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # Ljava/lang/Integer;

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/EngineeringModeService$GeneralApplication;->compareName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/EngineeringModeService$GeneralApplication;->compareModes(Ljava/lang/Integer;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
