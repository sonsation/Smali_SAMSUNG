.class public Lcom/samsung/android/knox/SemPersonaManager$StateManager;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/knox/ISemPersonaManager;

.field private userId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/knox/ISemPersonaManager;
    .param p3, "userId"    # I

    .prologue
    .line 3573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3574
    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 3575
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mContext:Landroid/content/Context;

    .line 3576
    iput p3, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    .line 3573
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;ILcom/samsung/android/knox/SemPersonaManager$StateManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/knox/ISemPersonaManager;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;I)V

    return-void
.end method


# virtual methods
.method public fireEvent(Landroid/content/pm/PersonaNewEvent;)Lcom/samsung/android/knox/SemPersonaState;
    .locals 4
    .param p1, "event"    # Landroid/content/pm/PersonaNewEvent;

    .prologue
    const/4 v3, 0x0

    .line 3618
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.fireEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3621
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3622
    :catch_0
    move-exception v0

    .line 3623
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3626
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPreviousState()Lcom/samsung/android/knox/SemPersonaState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3593
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3596
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3597
    :catch_0
    move-exception v0

    .line 3598
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getPreviousState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3601
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getState()Lcom/samsung/android/knox/SemPersonaState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3581
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3583
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getState(I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3584
    :catch_0
    move-exception v0

    .line 3585
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3588
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public inState(Lcom/samsung/android/knox/SemPersonaState;)Z
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/knox/SemPersonaState;

    .prologue
    .line 3607
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3609
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3610
    :catch_0
    move-exception v0

    .line 3611
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3614
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;

    .prologue
    .line 3642
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.isAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3645
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3646
    :catch_0
    move-exception v0

    .line 3647
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3650
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 3630
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.setAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3633
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3634
    :catch_0
    move-exception v0

    .line 3635
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3638
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
