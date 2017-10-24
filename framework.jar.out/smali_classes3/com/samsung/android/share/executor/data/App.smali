.class public Lcom/samsung/android/share/executor/data/App;
.super Ljava/lang/Object;
.source "App.java"


# instance fields
.field private appName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/App;->appName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/App;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/App;->appName:Ljava/lang/String;

    .line 33
    return-void
.end method
