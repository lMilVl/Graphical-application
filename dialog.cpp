#include "dialog.h"
#include "ui_dialog.h"
#include <QDebug>
#include "../Lesson1/lab1.h"


Dialog::Dialog(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::Dialog)
{
    ui->setupUi(this);
}

Dialog::~Dialog()
{
    delete ui;
}

void Dialog::calculate() {

    int a = ui->lineEditA->text().toInt();
    int b = ui->lineEditB->text().toInt();
    for(int n: ListOfPrimeNumbers(a, b)) {
    ui->listWidget->addItem(QString::number(n));
    }
}
