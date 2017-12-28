.class public Lcom/android/launcher3/common/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# instance fields
.field private mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    .line 32
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 102
    .local v0, "user":Landroid/os/UserHandle;
    if-eqz v0, :cond_0

    .line 103
    invoke-static {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    .line 106
    .end local v0    # "user":Landroid/os/UserHandle;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 69
    instance-of v0, p1, Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 75
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 72
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 75
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
