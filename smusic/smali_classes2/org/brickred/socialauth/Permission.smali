.class public Lorg/brickred/socialauth/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lorg/brickred/socialauth/Permission;

.field public static final AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

.field public static final CUSTOM:Lorg/brickred/socialauth/Permission;

.field public static final DEFAULT:Lorg/brickred/socialauth/Permission;

.field private static final serialVersionUID:J = 0x2fbcab5343e30c17L


# instance fields
.field private scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lorg/brickred/socialauth/Permission;

    .line 34
    const-string v1, "authenticate_only"

    .line 33
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    .line 35
    new-instance v0, Lorg/brickred/socialauth/Permission;

    const-string v1, "all"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/Permission;->ALL:Lorg/brickred/socialauth/Permission;

    .line 36
    new-instance v0, Lorg/brickred/socialauth/Permission;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/Permission;->DEFAULT:Lorg/brickred/socialauth/Permission;

    .line 37
    new-instance v0, Lorg/brickred/socialauth/Permission;

    const-string v1, "custom"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/brickred/socialauth/Permission;->scope:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/brickred/socialauth/Permission;

    if-nez v1, :cond_1

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 53
    check-cast v0, Lorg/brickred/socialauth/Permission;

    .line 54
    .local v0, "p":Lorg/brickred/socialauth/Permission;
    iget-object v1, v0, Lorg/brickred/socialauth/Permission;->scope:Ljava/lang/String;

    iget-object v2, p0, Lorg/brickred/socialauth/Permission;->scope:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/brickred/socialauth/Permission;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/brickred/socialauth/Permission;->scope:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/brickred/socialauth/Permission;->scope:Ljava/lang/String;

    return-object v0
.end method
