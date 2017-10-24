.class public Landroid/app/wallpaperbackup/WallpaperUser;
.super Ljava/lang/Object;
.source "WallpaperUser.java"


# instance fields
.field private mBottom:I

.field private mComponent:Ljava/lang/String;

.field private mHeight:I

.field private mImagePath:Ljava/lang/String;

.field private mLeft:I

.field private mName:Ljava/lang/String;

.field private mRight:I

.field private mRotation:I

.field private mTop:I

.field private mUserId:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "component"    # Ljava/lang/String;
    .param p5, "imagePath"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 50
    iput p2, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 51
    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mImagePath:Ljava/lang/String;

    .line 54
    iput p6, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mUserId:I

    .line 48
    return-void
.end method


# virtual methods
.method public getBottomValue()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mBottom:I

    return v0
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftValue()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mLeft:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRightValue()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRight:I

    return v0
.end method

.method public getRotationValue()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRotation:I

    return v0
.end method

.method public getTopValue()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTop:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mUserId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    return v0
.end method

.method public setBottomValue(I)V
    .locals 0
    .param p1, "bottom"    # I

    .prologue
    .line 133
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mBottom:I

    .line 132
    return-void
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 75
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mImagePath:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setLeftValue(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 112
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mLeft:I

    .line 111
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setRightValue(I)V
    .locals 0
    .param p1, "right"    # I

    .prologue
    .line 126
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRight:I

    .line 125
    return-void
.end method

.method public setRotationValue(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 140
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mRotation:I

    .line 139
    return-void
.end method

.method public setTopValue(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 119
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mTop:I

    .line 118
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 104
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mUserId:I

    .line 103
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 68
    return-void
.end method
