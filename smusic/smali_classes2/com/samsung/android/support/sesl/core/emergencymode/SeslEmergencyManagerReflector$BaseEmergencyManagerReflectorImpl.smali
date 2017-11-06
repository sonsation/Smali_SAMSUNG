.class Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;
.super Ljava/lang/Object;
.source "SeslEmergencyManagerReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$EmergencyManagerReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseEmergencyManagerReflectorImpl"
.end annotation


# static fields
.field protected static mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "com.sec.android.emergencymode.EmergencyManager"

    sput-object v0, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;->mClassName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public isEmergencyMode(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 29
    sget-object v3, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v4, "isEmergencyMode"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 31
    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "mode":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "mode":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 36
    :cond_0
    return v2
.end method
