.class Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/action/ActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionAttr"
.end annotation


# instance fields
.field private action:Lcom/samsung/android/mateservice/action/ActionExecutable;

.field private executeOnSameThread:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Lcom/samsung/android/mateservice/action/ActionExecutable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->action:Lcom/samsung/android/mateservice/action/ActionExecutable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->executeOnSameThread:Z

    return v0
.end method

.method private constructor <init>(Lcom/samsung/android/mateservice/action/ActionExecutable;Z)V
    .locals 0
    .param p1, "action"    # Lcom/samsung/android/mateservice/action/ActionExecutable;
    .param p2, "executeOnSameThread"    # Z

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->action:Lcom/samsung/android/mateservice/action/ActionExecutable;

    .line 159
    iput-boolean p2, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->executeOnSameThread:Z

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mateservice/action/ActionExecutable;ZLcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)V
    .locals 0
    .param p1, "action"    # Lcom/samsung/android/mateservice/action/ActionExecutable;
    .param p2, "executeOnSameThread"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;Z)V

    return-void
.end method
