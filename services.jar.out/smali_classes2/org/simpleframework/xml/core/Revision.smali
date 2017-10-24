.class Lorg/simpleframework/xml/core/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# instance fields
.field private equal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    .line 42
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 66
    if-nez p2, :cond_0

    .line 68
    if-nez p1, :cond_1

    .line 71
    :goto_0
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return v0

    .line 67
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    goto :goto_0
.end method

.method public getDefault()D
    .locals 2

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 52
    return-wide v0
.end method

.method public isEqual()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return v0
.end method
