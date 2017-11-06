.class public Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;
.super Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;
.source "KeyguardManagerReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "android.app.KeyguardManager"

    return-object v0
.end method

.method public setBendedPendingIntent(Ljava/lang/Object;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Landroid/app/PendingIntent;

    aput-object v1, v0, v3

    const-class v1, Landroid/content/Intent;

    aput-object v1, v0, v4

    .line 18
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v1, "setBendedPendingIntent"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method
