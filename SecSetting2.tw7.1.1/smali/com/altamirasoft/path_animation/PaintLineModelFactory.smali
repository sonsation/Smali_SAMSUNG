.class public Lcom/altamirasoft/path_animation/PaintLineModelFactory;
.super Ljava/lang/Object;
.source "PaintLineModelFactory.java"


# instance fields
.field defaultLineCap:Landroid/graphics/Paint$Cap;

.field defaultLineColor:I

.field defaultLineWidth:I

.field listener:Lcom/altamirasoft/path_animation/PathListener;

.field mLineCap:[Landroid/graphics/Paint$Cap;

.field mLineColor:[I

.field mLineWidth:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineWidth:I

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineColor:I

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineCap:Landroid/graphics/Paint$Cap;

    .line 34
    new-instance v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;-><init>(Lcom/altamirasoft/path_animation/PaintLineModelFactory;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->listener:Lcom/altamirasoft/path_animation/PathListener;

    .line 57
    return-void
.end method

.method public static newInstance(IILandroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1
    .param p0, "lineWidth"    # I
    .param p1, "lineColor"    # I
    .param p2, "lineCap"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 24
    new-instance v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    invoke-direct {v0}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;-><init>()V

    .line 25
    .local v0, "instance":Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    invoke-virtual {v0, p0}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->setDefaultLineWidth(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    .line 26
    invoke-virtual {v0, p1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->setDefaultLineColor(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    .line 27
    invoke-virtual {v0, p2}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->setDefaultLineCap(Landroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    .line 29
    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/altamirasoft/path_animation/PathListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->listener:Lcom/altamirasoft/path_animation/PathListener;

    return-object v0
.end method

.method public setDefaultLineCap(Landroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1
    .param p1, "defaultLineCap"    # Landroid/graphics/Paint$Cap;

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineCap:[Landroid/graphics/Paint$Cap;

    .line 121
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineCap:Landroid/graphics/Paint$Cap;

    .line 122
    return-object p0
.end method

.method public setDefaultLineColor(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1
    .param p1, "defaultLineColor"    # I

    .prologue
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineColor:[I

    .line 110
    iput p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineColor:I

    .line 111
    return-object p0
.end method

.method public setDefaultLineWidth(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1
    .param p1, "defaultLineWidth"    # I

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineWidth:[I

    .line 99
    iput p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineWidth:I

    .line 100
    return-object p0
.end method
